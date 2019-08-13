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
uniform sampler2D Texture2Texture;
uniform sampler2D Texture3Texture;

varying vec2 VARYING0;

void main()
{
    vec4 _229 = texture2D(Texture0Texture, VARYING0);
    vec3 _233 = texture2D(Texture2Texture, VARYING0).xyz;
    vec4 _236 = texture2D(Texture3Texture, VARYING0);
    float _240 = 1.0 - _236.w;
    vec3 _246 = _229.xyz;
    vec3 _276 = (_233 + (min(vec3(1.0), (_236.xyz * CB1[4].y) + (_246 * _240)).xyz * (vec3(1.0) - _233))).xyz + (_246 * (clamp(_240 - _229.w, 0.0, 1.0) * _240));
    vec3 _213 = clamp(vec4(_276.x, _276.y, _276.z, _229.w), vec4(0.0), vec4(1.0)).xyz;
    gl_FragData[0] = vec4(dot(_213, CB1[1].xyz) + CB1[1].w, dot(_213, CB1[2].xyz) + CB1[2].w, dot(_213, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
