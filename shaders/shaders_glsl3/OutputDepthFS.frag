#version 150

uniform sampler2D Texture0Texture;

in vec2 VARYING0;

void main()
{
    gl_FragDepth = texture(Texture0Texture, VARYING0).x;
}

//$$Texture0Texture=s0
