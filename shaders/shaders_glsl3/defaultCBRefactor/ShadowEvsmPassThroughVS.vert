#version 150

uniform vec4 CB3[65];
in vec4 POSITION;
out vec2 VARYING0;

void main()
{
    int v0 = int(POSITION.z);
    gl_Position = vec4((vec2(2.0) * ((POSITION.xy * CB3[0].xy) + CB3[v0 * 1 + 0].xy)) + vec2(-1.0), 0.0, 1.0);
    VARYING0 = (POSITION.xy * CB3[0].zw) + CB3[v0 * 1 + 0].zw;
}

