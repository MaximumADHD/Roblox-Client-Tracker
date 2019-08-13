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
    vec3 _285 = texture(Texture0Texture, VARYING0).xyz;
    vec3 _304 = texture(Texture1Texture, VARYING0).xyz;
    vec3 _311 = mix((((_285 * _285) * 4.0) + texture(Texture3Texture, VARYING0).xyz) + (texture(Texture2Texture, VARYING0).xyz * CB1[4].w), (_304 * _304) * 4.0, vec3(CB1[4].x));
    vec3 _373 = _311 * CB1[5].x;
    vec3 _391 = ((_311 * (_373 + vec3(CB1[5].y))) / ((_311 * (_373 + vec3(CB1[5].z))) + vec3(CB1[5].w))) * CB1[6].x;
    _entryPointOutput = vec4(dot(_391, CB1[1].xyz) + CB1[1].w, dot(_391, CB1[2].xyz) + CB1[2].w, dot(_391, CB1[3].xyz) + CB1[3].w, 1.0);
}

//$$Texture0Texture=s0
//$$Texture2Texture=s2
//$$Texture3Texture=s3
//$$Texture1Texture=s1
