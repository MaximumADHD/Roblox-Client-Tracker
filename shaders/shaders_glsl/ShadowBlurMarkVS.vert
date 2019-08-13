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

void main()
{
    vec4 v0 = vec4(0.0);
    v0.x = dot(CB1[1], POSITION);
    vec4 v1 = v0;
    v1.y = dot(CB1[2], POSITION);
    vec4 v2 = v1;
    v2.z = 0.5;
    vec4 v3 = v2;
    v3.w = 1.0;
    gl_Position = v3;
}

