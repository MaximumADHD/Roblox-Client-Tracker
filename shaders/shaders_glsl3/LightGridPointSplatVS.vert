#version 150

struct PointSplatParams
{
    vec4 posToNDC[16];
};

uniform vec4 CB2[16];
in vec4 POSITION;
in vec4 COLOR0;
out vec4 VARYING0;

void main()
{
    int v0 = int(POSITION.z);
    gl_Position = vec4((POSITION.xy * CB2[v0 * 1 + 0].xy) + CB2[v0 * 1 + 0].zw, 0.0, 1.0);
    VARYING0 = COLOR0;
    gl_PointSize = 1.0;
}

