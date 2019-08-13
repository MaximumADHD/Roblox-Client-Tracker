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
    float _197 = 1.0 / ((2.0 * CB1[1].z) * CB1[1].z);
    float _212 = float((2 * 0) + 1);
    float _228 = exp((((-1.0) - _212) * (_212 + 1.0)) * _197);
    float _231 = exp(((-_212) * _212) * _197) + _228;
    vec2 _241 = CB1[1].xy * (_212 + (_228 / _231));
    gl_FragData[0] = (texture2D(Texture0Texture, VARYING0) + ((texture2D(Texture0Texture, VARYING0 + _241) + texture2D(Texture0Texture, VARYING0 - _241)) * _231)) / vec4(1.0 + (2.0 * _231));
}

//$$Texture0Texture=s0
