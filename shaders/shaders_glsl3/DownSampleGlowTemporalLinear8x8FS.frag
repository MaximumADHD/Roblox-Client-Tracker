#version 150

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

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec3 _274 = texture(Texture0Texture, VARYING0 + (vec2(0.25) * CB1[0].zw)).xyz;
    vec3 _345 = (_274 * _274) * 4.0;
    float _362 = max(max(_345.x, _345.y), _345.z);
    vec3 _376 = _345 * ((vec3(max(_362 - CB1[7].y, 0.0)) / vec3(_362 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _288 = texture(Texture0Texture, VARYING0 + (vec2(-0.25) * CB1[0].zw)).xyz;
    vec3 _393 = (_288 * _288) * 4.0;
    float _410 = max(max(_393.x, _393.y), _393.z);
    vec3 _424 = _393 * ((vec3(max(_410 - CB1[7].y, 0.0)) / vec3(_410 + 0.001000000047497451305389404296875)) * CB1[7].x);
    vec3 _306 = texture(Texture0Texture, VARYING0 + CB1[1].xy).xyz;
    vec3 _441 = (_306 * _306) * 4.0;
    float _458 = max(max(_441.x, _441.y), _441.z);
    vec3 _313 = texture(Texture1Texture, VARYING0).xyz;
    _entryPointOutput = vec4(mix(_441 * ((vec3(max(_458 - CB1[7].y, 0.0)) / vec3(_458 + 0.001000000047497451305389404296875)) * CB1[7].x), clamp((_313 * _313) * 4.0, min(_376, _424), max(_376, _424)), vec3(CB1[1].z)), 1.0);
}

//$$Texture0Texture=s0
//$$Texture1Texture=s1
