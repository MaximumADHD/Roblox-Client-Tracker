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
uniform sampler2D Texture1Texture;

varying vec2 VARYING0;

void main()
{
    vec3 _252 = texture2D(Texture0Texture, VARYING0 + (vec2(0.25) * CB1[0].zw)).xyz;
    vec3 _323 = (_252 * _252) * 4.0;
    float _340 = max(max(_323.x, _323.y), _323.z);
    vec3 _354 = _323 * ((vec3(max(_340 - CB1[7].y, 0.0)) / vec3(_340 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _266 = texture2D(Texture0Texture, VARYING0 + (vec2(-0.25) * CB1[0].zw)).xyz;
    vec3 _371 = (_266 * _266) * 4.0;
    float _388 = max(max(_371.x, _371.y), _371.z);
    vec3 _402 = _371 * ((vec3(max(_388 - CB1[7].y, 0.0)) / vec3(_388 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _284 = texture2D(Texture0Texture, VARYING0 + CB1[1].xy).xyz;
    vec3 _419 = (_284 * _284) * 4.0;
    float _436 = max(max(_419.x, _419.y), _419.z);
    vec3 _291 = texture2D(Texture1Texture, VARYING0).xyz;
    gl_FragData[0] = vec4(mix(_419 * ((vec3(max(_436 - CB1[7].y, 0.0)) / vec3(_436 + 0.001000000047497451305389404296875)) * CB1[7].x), clamp((_291 * _291) * 4.0, min(_354, _402), max(_354, _402)), vec3(CB1[1].z)), 1.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
