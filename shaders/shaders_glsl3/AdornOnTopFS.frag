#version 150

uniform sampler2D DiffuseMapTexture;

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = texture(DiffuseMapTexture, VARYING0) * VARYING1;
}

//$$DiffuseMapTexture=s0
