#version 110

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
attribute vec4 POSITION;
varying vec2 VARYING0;

void main()
{
    vec2 v0 = (POSITION.xy * vec2(0.5, -0.5)) + vec2(0.5);
    vec2 v1 = v0;
    v1.x = v0.x * CB1[1].x;
    vec2 v2 = v1;
    v2.y = v0.y * CB1[1].y;
    gl_Position = POSITION;
    VARYING0 = v2;
}

