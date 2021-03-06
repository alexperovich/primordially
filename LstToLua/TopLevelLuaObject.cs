﻿using System;

namespace Primordially.LstToLua
{
    internal abstract class TopLevelLuaObject : LuaObject
    {
        public bool IsMod { get; protected set; } = false;
        public bool IsDelete { get; protected set; } = false;
        public string? CopiedFrom { get; protected set; } = null;
        public abstract string ObjectType { get; }

        protected TopLevelLuaObject()
        {
            AddPropertyDefinitions(() => new []
            {
                Property.String("SOURCEPAGE", "SourcePage"),
                Property.String("SOURCESHORT", "SourceShort"),
                Property.String("SOURCELONG", "SourceLong"),
                Property.String("SOURCEDATE", "SourceDate"),
                Property.String("SOURCEURL", "SourceUrl"),
                Property.String("SOURCEWEB", "SourceWeb"),
                Property.String("SOURCELINK", "SourceLink"),
            });
        }

        public string? Name
        {
            get => Get<string>(nameof(Name));
            set => Set(nameof(Name), value);
        }
        public string? Key
        {
            get => Get<string>(nameof(Key));
            set => Set(nameof(Key), value);
        }

        public override void AddField(TextSpan field)
        {
            if (field.StartsWith("NAMEISPI:") || field.StartsWith("DESCISPI:"))
            {
                // These fields are unimportant for us because our product
                // satisfies the requirements for the Community Use license
                // specified here https://paizo.com/community/communityuse
                // see the README for more details
                return;
            }
            base.AddField(field);
        }

        public override void Dump(LuaTextWriter output)
        {
            var key = Key ?? Name;
            if (IsDelete && key != null)
            {
                output.Write($"Delete{ObjectType}(");
                output.WriteValue(key.AsSpan());
                output.Write(")");
                return;
            }

            if (IsMod)
            {
                output.Write($"Modify{ObjectType}(");
            }
            else if (CopiedFrom != null)
            {
                output.Write($"Copy{ObjectType}(");
                output.WriteValue(CopiedFrom.AsSpan());
                output.Write(", ");
            }
            else
            {
                output.Write($"Define{ObjectType}(");
            }
            base.Dump(output);
            output.Write(")");
        }
    }
}