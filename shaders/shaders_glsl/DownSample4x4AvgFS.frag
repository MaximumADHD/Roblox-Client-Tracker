#version 110

uniform sampler2D Texture0Texture;

varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    gl_FragData[0] = (((texture2D(Texture0Texture, VARYING1.xy) + texture2D(Texture0Texture, VARYING1.zw)) + texture2D(Texture0Texture, VARYING2.xy)) + texture2D(Texture0Texture, VARYING2.zw)) * 0.25;
}

//$$Texture0Texture=s0
