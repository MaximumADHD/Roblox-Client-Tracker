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
    vec3 _279 = texture2D(Texture0Texture, VARYING0 + (vec2(0.25) * CB1[0].zw)).xyz;
    vec3 _351 = (_279 * _279) * 4.0;
    float _368 = max(max(_351.x, _351.y), _351.z);
    vec3 _382 = _351 * ((vec3(max(_368 - CB1[7].y, 0.0)) / vec3(_368 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _293 = texture2D(Texture0Texture, VARYING0 + (vec2(-0.25) * CB1[0].zw)).xyz;
    vec3 _399 = (_293 * _293) * 4.0;
    float _416 = max(max(_399.x, _399.y), _399.z);
    vec3 _430 = _399 * ((vec3(max(_416 - CB1[7].y, 0.0)) / vec3(_416 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _311 = texture2D(Texture0Texture, VARYING0 + CB1[1].xy).xyz;
    vec3 _447 = (_311 * _311) * 4.0;
    float _464 = max(max(_447.x, _447.y), _447.z);
    vec3 _318 = texture2D(Texture1Texture, VARYING0).xyz;
    gl_FragData[0] = vec4(sqrt(clamp(mix(_447 * ((vec3(max(_464 - CB1[7].y, 0.0)) / vec3(_464 + 0.001000000047497451305389404296875)) * CB1[7].x), clamp((_318 * _318) * 4.0, min(_382, _430), max(_382, _430)), vec3(CB1[1].z)) * 0.25, vec3(0.0), vec3(1.0))), 1.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
