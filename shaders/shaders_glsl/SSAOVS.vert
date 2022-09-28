#version 110

attribute vec4 POSITION;
varying vec2 VARYING0;

void main()
{
    gl_Position = POSITION;
    VARYING0 = (POSITION.xy * 0.5) + vec2(0.5);
}

