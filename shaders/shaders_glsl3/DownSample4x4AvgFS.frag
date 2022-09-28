#version 150

uniform sampler2D Texture0Texture;

in vec4 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = (((texture(Texture0Texture, VARYING1.xy) + texture(Texture0Texture, VARYING1.zw)) + texture(Texture0Texture, VARYING2.xy)) + texture(Texture0Texture, VARYING2.zw)) * 0.25;
}

//$$Texture0Texture=s0
