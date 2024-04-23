#version 150

uniform sampler2D Texture0Texture;

in vec2 VARYING0;
in vec4 VARYING1;
in vec4 VARYING2;
in vec4 VARYING3;
in vec4 VARYING4;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(((((((((texture(Texture0Texture, VARYING0).xyz + texture(Texture0Texture, VARYING1.xy).xyz) + texture(Texture0Texture, VARYING1.zw).xyz) + texture(Texture0Texture, VARYING2.xy).xyz) + texture(Texture0Texture, VARYING2.zw).xyz) + texture(Texture0Texture, VARYING3.xy).xyz) + texture(Texture0Texture, VARYING3.zw).xyz) + texture(Texture0Texture, VARYING4.xy).xyz) + texture(Texture0Texture, VARYING4.zw).xyz) * 0.111111111938953399658203125, 1.0);
}

//$$Texture0Texture=s0
