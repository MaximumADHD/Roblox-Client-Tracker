#version 110

uniform sampler2D Texture0Texture;

varying vec2 VARYING0;
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;

void main()
{
    gl_FragData[0] = vec4(((((((((texture2D(Texture0Texture, VARYING0).xyz + texture2D(Texture0Texture, VARYING1.xy).xyz) + texture2D(Texture0Texture, VARYING1.zw).xyz) + texture2D(Texture0Texture, VARYING2.xy).xyz) + texture2D(Texture0Texture, VARYING2.zw).xyz) + texture2D(Texture0Texture, VARYING3.xy).xyz) + texture2D(Texture0Texture, VARYING3.zw).xyz) + texture2D(Texture0Texture, VARYING4.xy).xyz) + texture2D(Texture0Texture, VARYING4.zw).xyz) * 0.111111111938953399658203125, 1.0);
}

//$$Texture0Texture=s0
