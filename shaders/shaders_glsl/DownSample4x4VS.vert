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

void main()
{
    vec2 _202 = (POSITION.xy * 0.5) + vec2(0.5);
    vec2 _167 = CB1[0].zw * 0.25;
    vec2 _171 = _202 + (_167 * vec2(-1.0));
    vec2 _178 = _202 + (_167 * vec2(1.0, -1.0));
    vec2 _185 = _202 + (_167 * vec2(-1.0, 1.0));
    vec2 _192 = _202 + _167;
    gl_Position = POSITION;
    VARYING0 = _202;
    VARYING1 = vec4(_171.x, _171.y, _178.x, _178.y);
    VARYING2 = vec4(_185.x, _185.y, _192.x, _192.y);
}

