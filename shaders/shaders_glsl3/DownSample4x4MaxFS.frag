#version 150

uniform sampler2D Texture0Texture;

in vec4 VARYING1;
in vec4 VARYING2;
out vec4 _entryPointOutput;

void main()
{
    _entryPointOutput = vec4(max(max(max(texture(Texture0Texture, VARYING1.xy).xyz, texture(Texture0Texture, VARYING1.zw).xyz), texture(Texture0Texture, VARYING2.xy).xyz), texture(Texture0Texture, VARYING2.zw).xyz), 1.0);
}

//$$Texture0Texture=s0
