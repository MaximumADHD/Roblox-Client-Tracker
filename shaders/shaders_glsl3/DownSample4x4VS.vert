#version 150

struct Params
{
    vec4 TextureSize;
    vec4 Params1;
    vec4 Params2;
    vec4 Params3;
    vec4 Params4;
    vec4 Params5;
    vec4 Params6;
    vec4 Bloom;
};

uniform vec4 CB1[8];
in vec4 POSITION;
out vec2 VARYING0;
out vec4 VARYING1;
out vec4 VARYING2;

void main()
{
    vec2 v0 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 v1 = CB1[0].zw * 0.25;
    vec2 v2 = v0 + (v1 * vec2(-1.0));
    vec2 v3 = v0 + (v1 * vec2(1.0, -1.0));
    vec2 v4 = v0 + (v1 * vec2(-1.0, 1.0));
    vec2 v5 = v0 + v1;
    gl_Position = POSITION;
    VARYING0 = v0;
    VARYING1 = vec4(v2.x, v2.y, v3.x, v3.y);
    VARYING2 = vec4(v4.x, v4.y, v5.x, v5.y);
}

