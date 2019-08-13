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
    vec4 _164 = vec4(2.0, 2.0, -2.0, 0.0) * CB1[0].zwzw;
    vec2 _168 = _164.xy;
    vec2 _174 = _164.wy;
    vec2 _183 = _164.zy;
    gl_FragData[0] = ((((((((texture2D(Texture0Texture, VARYING0 - _168) + (texture2D(Texture0Texture, VARYING0 - _174) * 2.0)) + texture2D(Texture0Texture, VARYING0 - _183)) + (texture2D(Texture0Texture, VARYING0 + _164.zw) * 2.0)) + (texture2D(Texture0Texture, VARYING0) * 4.0)) + (texture2D(Texture0Texture, VARYING0 + _164.xw) * 2.0)) + texture2D(Texture0Texture, VARYING0 + _183)) + (texture2D(Texture0Texture, VARYING0 + _174) * 2.0)) + texture2D(Texture0Texture, VARYING0 + _168)) * (0.0625 * CB1[2].x);
}

//$$Texture0Texture=s0
