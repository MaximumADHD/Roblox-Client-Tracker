#version 150

uniform vec4 CB3[65];
in vec4 POSITION;

void main()
{
    gl_Position = vec4((vec2(2.0, -2.0) * ((POSITION.xy * CB3[0].xy) + CB3[int(POSITION.z) * 1 + 0].xy)) + vec2(-1.0, 1.0), 0.0, 1.0);
}

