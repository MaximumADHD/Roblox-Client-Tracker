#version 150

uniform vec4 CB13[16];
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(CB13[0].x, 0.0, 0.0, 1.0);
}

