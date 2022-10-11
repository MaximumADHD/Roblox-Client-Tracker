#version 110

uniform sampler2D Texture0Texture;

varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    gl_FragData[0] = vec4(max(max(texture2D(Texture0Texture, VARYING1.xy).xyz, texture2D(Texture0Texture, VARYING1.zw).xyz), max(texture2D(Texture0Texture, VARYING2.xy).xyz, texture2D(Texture0Texture, VARYING2.zw).xyz)), 1.0);
}

//$$Texture0Texture=s0
