#version 150

in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    gl_Position = POSITION;
    VARYING0 = (POSITION.xy * 0.5) + vec2(0.5);
}

