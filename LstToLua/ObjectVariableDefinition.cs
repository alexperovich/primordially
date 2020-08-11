﻿namespace Primordially.LstToLua
{
    internal class ObjectVariableDefinition : IDumpable
    {
        public ObjectVariableDefinition(string name, string initialValue)
        {
            Name = name;
            InitialValue = initialValue;
        }

        public string Name { get; }
        public Formula InitialValue { get; }

        public void Dump(LuaTextWriter output)
        {
            output.WriteStartObject();
            output.WriteKeyValue("Name", Name);
            output.WriteKeyValue("InitialValue", InitialValue);
            output.WriteEndObject();
        }
    }
}