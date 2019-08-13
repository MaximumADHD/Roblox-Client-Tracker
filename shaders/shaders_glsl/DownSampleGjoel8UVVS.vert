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
varying vec4 VARYING1;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;

void main()
{
    vec2 _277 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 _211 = CB1[0].zw * vec2(0.75, 0.0);
    vec2 _213 = CB1[0].zw * vec2(0.0, 0.75);
    vec2 _215 = CB1[0].zw * vec2(0.705122768878936767578125);
    vec4 _218 = _277.xyxy;
    gl_Position = POSITION;
    VARYING0 = _277;
    VARYING1 = _218 + vec4(_211, _211 * (-1.0));
    VARYING2 = _218 + vec4(_213, _213 * (-1.0));
    VARYING3 = _218 + vec4(_215, _215 * (-1.0));
    VARYING4 = _218 + vec4(CB1[0].zw * vec2(0.705122768878936767578125, -0.705122768878936767578125), CB1[0].zw * vec2(-0.705122768878936767578125, 0.705122768878936767578125));
}

