#version 150

in vec2 VARYING0;

void main()
{
    gl_FragDepth = (clamp(VARYING0.x, 0.0, 1.0) * 0.5) + 0.5;
}

