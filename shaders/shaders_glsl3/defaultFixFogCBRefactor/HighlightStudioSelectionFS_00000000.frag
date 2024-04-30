#version 150

uniform vec4 CB13[16];
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = CB13[0];
}

