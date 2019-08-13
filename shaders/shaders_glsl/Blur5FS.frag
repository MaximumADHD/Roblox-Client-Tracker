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
uniform sampler2D Texture0Texture;

varying vec2 VARYING0;

void main()
{
    float _198 = 1.0 / ((2.0 * CB1[1].z) * CB1[1].z);
    float _213 = float((2 * 0) + 1);
    float _229 = exp((((-1.0) - _213) * (_213 + 1.0)) * _198);
    float _232 = exp(((-_213) * _213) * _198) + _229;
    vec2 _242 = CB1[1].xy * (_213 + (_229 / _232));
    int _262 = 0 + 1;
    float _292 = float((2 * _262) + 1);
    float _301 = exp((((-1.0) - _292) * (_292 + 1.0)) * _198);
    float _302 = exp(((-_292) * _292) * _198) + _301;
    vec2 _305 = CB1[1].xy * (_292 + (_301 / _302));
    int _315 = _262 + 1;
    float _324 = float((2 * _315) + 1);
    float _333 = exp((((-1.0) - _324) * (_324 + 1.0)) * _198);
    float _334 = exp(((-_324) * _324) * _198) + _333;
    vec2 _337 = CB1[1].xy * (_324 + (_333 / _334));
    int _347 = _315 + 1;
    float _356 = float((2 * _347) + 1);
    float _365 = exp((((-1.0) - _356) * (_356 + 1.0)) * _198);
    float _366 = exp(((-_356) * _356) * _198) + _365;
    vec2 _369 = CB1[1].xy * (_356 + (_365 / _366));
    float _388 = float((2 * (_347 + 1)) + 1);
    float _397 = exp((((-1.0) - _388) * (_388 + 1.0)) * _198);
    float _398 = exp(((-_388) * _388) * _198) + _397;
    vec2 _401 = CB1[1].xy * (_388 + (_397 / _398));
    gl_FragData[0] = (((((texture2D(Texture0Texture, VARYING0) + ((texture2D(Texture0Texture, VARYING0 + _242) + texture2D(Texture0Texture, VARYING0 - _242)) * _232)) + ((texture2D(Texture0Texture, VARYING0 + _305) + texture2D(Texture0Texture, VARYING0 - _305)) * _302)) + ((texture2D(Texture0Texture, VARYING0 + _337) + texture2D(Texture0Texture, VARYING0 - _337)) * _334)) + ((texture2D(Texture0Texture, VARYING0 + _369) + texture2D(Texture0Texture, VARYING0 - _369)) * _366)) + ((texture2D(Texture0Texture, VARYING0 + _401) + texture2D(Texture0Texture, VARYING0 - _401)) * _398)) / vec4(((((1.0 + (2.0 * _232)) + (2.0 * _302)) + (2.0 * _334)) + (2.0 * _366)) + (2.0 * _398));
}

//$$Texture0Texture=s0
