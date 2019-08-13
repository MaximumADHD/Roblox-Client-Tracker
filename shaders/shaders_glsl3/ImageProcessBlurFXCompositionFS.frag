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
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;
uniform sampler2D Texture1Texture;

in vec2 VARYING0;
out vec4 _entryPointOutput;

void main()
{
    vec4 _273 = texture(Texture0Texture, VARYING0);
    vec3 _277 = texture(Texture2Texture, VARYING0).xyz;
    vec4 _280 = texture(Texture3Texture, VARYING0);
    float _284 = 1.0 - _280.w;
    vec3 _290 = _273.xyz;
    vec3 _320 = (_277 + (min(vec3(1.0), (_280.xyz * CB1[4].y) + (_290 * _284)).xyz * (vec3(1.0) - _277))).xyz + (_290 * (clamp(_284 - _273.w, 0.0, 1.0) * _284));
    vec3 _257 = mix(clamp(vec4(_320.x, _320.y, _320.z, _273.w), vec4(0.0), vec4(1.0)).xyz, texture(Texture1Texture, VARYING0).xyz, vec3(CB1[4].x));
    _entryPointOutput = vec4(dot(_257, CB1[1].xyz) + CB1[1].w, dot(_257, CB1[2].xyz) + CB1[2].w, dot(_257, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
//$$Texture1Texture=s1
