#version 150

uniform sampler2DArray TileInTexture;

in vec2 VARYING0;
out vec4 _entryPointOutput_tex0;
out vec4 _entryPointOutput_tex1;
out vec4 _entryPointOutput_tex2;

void main()
{
    _entryPointOutput_tex0 = texture(TileInTexture, vec3(VARYING0, 0.0));
    _entryPointOutput_tex1 = texture(TileInTexture, vec3(VARYING0, 1.0));
    _entryPointOutput_tex2 = texture(TileInTexture, vec3(VARYING0, 2.0));
}

//$$TileInTexture=s0
