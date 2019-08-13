#version 110

struct Params
{
    mat4 World;
    mat4 ViewProjection;
    vec4 Color1;
    vec4 Color2;
};

uniform vec4 CB1[10];
attribute vec4 POSITION;
attribute vec2 TEXCOORD0;
attribute vec4 COLOR0;
varying vec2 VARYING0;
varying vec4 VARYING1;

void main()
{
    vec4 _120 = POSITION * mat4(CB1[0], CB1[1], CB1[2], CB1[3]);
    vec4 _178 = _120 * mat4(CB1[4], CB1[5], CB1[6], CB1[7]);
    _178.z = 0.0;
    gl_Position = _178;
    VARYING0 = TEXCOORD0;
    VARYING1 = COLOR0 * mix(CB1[9], CB1[8], vec4(clamp(_120.y * 0.0005882352706976234912872314453125, 0.0, 1.0)));
    gl_PointSize = 2.0;
}

