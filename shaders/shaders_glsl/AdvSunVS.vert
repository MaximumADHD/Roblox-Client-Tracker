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
varying vec4 VARYING0;
varying vec2 VARYING1;

void main()
{
    vec4 v0 = vec4(POSITION, 1.0) * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 v1 = v0 * mat4(CB1[4], CB1[5], CB1[6], CB1[7]);
    v1.z = 0.0;
    gl_Position = v1;
    VARYING0 = mix(CB1[9], CB1[8], vec4(clamp(v0.y * 0.0005882352706976234912872314453125, 0.0, 1.0)));
    VARYING1 = TEXCOORD0;
}

