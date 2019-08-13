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
varying vec4 VARYING1;

void main()
{
    vec2 _229 = CB1[1].xy - VARYING1.xy;
    vec2 _235 = (sign(_229) - VARYING1.xy) / _229;
    float _237 = _235.x;
    float _244 = _235.y;
    vec2 _198 = (((VARYING1.xy - CB1[1].xy) * 0.5) * min(min((_237 < 0.0) ? 1.0 : _237, (_244 < 0.0) ? 1.0 : _244), 1.0)) * 0.0416666679084300994873046875;
    vec2 _208 = VARYING0 - _198;
    vec2 _292 = _208 - _198;
    vec2 _304 = _292 - _198;
    vec2 _316 = _304 - _198;
    vec2 _328 = _316 - _198;
    vec2 _340 = _328 - _198;
    vec2 _352 = _340 - _198;
    vec2 _364 = _352 - _198;
    vec2 _376 = _364 - _198;
    vec2 _388 = _376 - _198;
    vec2 _400 = _388 - _198;
    gl_FragData[0] = vec4(((((((((((((vec3(0.0) + texture2D(Texture0Texture, _208).xyz) + texture2D(Texture0Texture, _292).xyz) + texture2D(Texture0Texture, _304).xyz) + texture2D(Texture0Texture, _316).xyz) + texture2D(Texture0Texture, _328).xyz) + texture2D(Texture0Texture, _340).xyz) + texture2D(Texture0Texture, _352).xyz) + texture2D(Texture0Texture, _364).xyz) + texture2D(Texture0Texture, _376).xyz) + texture2D(Texture0Texture, _388).xyz) + texture2D(Texture0Texture, _400).xyz) + texture2D(Texture0Texture, _400 - _198).xyz) * vec3(0.083333335816860198974609375), 1.0);
}

//$$Texture0Texture=s0
