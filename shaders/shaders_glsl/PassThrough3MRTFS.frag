#version 110
#extension GL_EXT_texture_array : require

uniform sampler2DArray TileInTexture;

varying vec2 VARYING0;

void main()
{
    gl_FragData[0] = texture2DArray(TileInTexture, vec3(VARYING0, 0.0));
    gl_FragData[1] = texture2DArray(TileInTexture, vec3(VARYING0, 1.0));
    gl_FragData[2] = texture2DArray(TileInTexture, vec3(VARYING0, 2.0));
}

//$$TileInTexture=s0
