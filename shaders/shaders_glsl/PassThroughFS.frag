#version 110

uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    gl_FragData[0] = texture2D(Texture0Texture, VARYING0);
}

//$$Texture0Texture=s0
