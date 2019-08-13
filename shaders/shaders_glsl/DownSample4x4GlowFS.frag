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

varying vec4 VARYING1;
varying vec4 VARYING2;

void main()
{
    vec4 _175 = texture2D(Texture0Texture, VARYING1.xy);
    float _213 = _175.x;
    vec4 _181 = texture2D(Texture0Texture, VARYING1.zw);
    float _248 = _181.x;
    vec4 _187 = texture2D(Texture0Texture, VARYING2.xy);
    float _283 = _187.x;
    vec4 _193 = texture2D(Texture0Texture, VARYING2.zw);
    float _318 = _193.x;
    gl_FragData[0] = ((((vec4(_213, _175.yz, 1.0) * max(1.0 - _175.w, CB1[7].x * pow(clamp(max(max(_213, _175.y), _175.z), 0.0, 1.0), CB1[7].y))) + (vec4(_248, _181.yz, 1.0) * max(1.0 - _181.w, CB1[7].x * pow(clamp(max(max(_248, _181.y), _181.z), 0.0, 1.0), CB1[7].y)))) + (vec4(_283, _187.yz, 1.0) * max(1.0 - _187.w, CB1[7].x * pow(clamp(max(max(_283, _187.y), _187.z), 0.0, 1.0), CB1[7].y)))) + (vec4(_318, _193.yz, 1.0) * max(1.0 - _193.w, CB1[7].x * pow(clamp(max(max(_318, _193.y), _193.z), 0.0, 1.0), CB1[7].y)))) * 0.25;
}

//$$Texture0Texture=s0
