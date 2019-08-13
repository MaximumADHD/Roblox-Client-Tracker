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

in vec2 VARYING0;
in vec4 VARYING1;
out vec4 _entryPointOutput;

void main()
{
    vec2 _251 = CB1[1].xy - VARYING1.xy;
    vec2 _257 = (sign(_251) - VARYING1.xy) / _251;
    float _259 = _257.x;
    float _266 = _257.y;
    vec2 _220 = (((VARYING1.xy - CB1[1].xy) * 0.5) * min(min((_259 < 0.0) ? 1.0 : _259, (_266 < 0.0) ? 1.0 : _266), 1.0)) * 0.0416666679084300994873046875;
    vec2 _230 = VARYING0 - _220;
    vec2 _314 = _230 - _220;
    vec2 _326 = _314 - _220;
    vec2 _338 = _326 - _220;
    vec2 _350 = _338 - _220;
    vec2 _362 = _350 - _220;
    vec2 _374 = _362 - _220;
    vec2 _386 = _374 - _220;
    vec2 _398 = _386 - _220;
    vec2 _410 = _398 - _220;
    vec2 _422 = _410 - _220;
    _entryPointOutput = vec4(((((((((((((vec3(0.0) + texture(Texture0Texture, _230).xyz) + texture(Texture0Texture, _314).xyz) + texture(Texture0Texture, _326).xyz) + texture(Texture0Texture, _338).xyz) + texture(Texture0Texture, _350).xyz) + texture(Texture0Texture, _362).xyz) + texture(Texture0Texture, _374).xyz) + texture(Texture0Texture, _386).xyz) + texture(Texture0Texture, _398).xyz) + texture(Texture0Texture, _410).xyz) + texture(Texture0Texture, _422).xyz) + texture(Texture0Texture, _422 - _220).xyz) * vec3(0.083333335816860198974609375), 1.0);
}

//$$Texture0Texture=s0
