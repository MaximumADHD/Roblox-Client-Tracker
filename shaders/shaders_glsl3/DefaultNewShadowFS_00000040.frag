#version 150

in vec2 VARYING1;

void main()
{
    gl_FragDepth = (clamp(VARYING1.x, 0.0, 1.0) * 0.5) + 0.5;
}

