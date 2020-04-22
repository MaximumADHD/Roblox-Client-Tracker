#version 110

struct Params
{
    mat4 world;
    mat4 viewProjection;
    vec4 color0;
    vec4 color1;
    vec4 fogOffset;
    vec4 glare;
    vec4 irradiance[6];
};

uniform vec4 CB1[18];
attribute vec3 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 TEXCOORD1;
varying vec4 VARYING0;
varying vec2 VARYING1;

void main()
{
    vec4 v0 = (vec4(POSITION, 1.0) * mat4(CB1[0], CB1[1], CB1[2], CB1[3])) * mat4(CB1[4], CB1[5], CB1[6], CB1[7]);
    v0.z = 0.0;
    gl_Position = v0;
    VARYING0 = TEXCOORD1;
    VARYING1 = TEXCOORD0;
    gl_PointSize = 2.0;
}

