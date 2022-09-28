#version 150

uniform vec4 CB13[1];
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(CB13[0].x, CB13[0].x, CB13[0].x, 1.0);
}

