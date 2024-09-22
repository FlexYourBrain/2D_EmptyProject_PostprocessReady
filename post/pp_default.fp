#version 140

in vec4 var_position;
in vec2 var_texcoord0;
out vec4 color_out;

uniform sampler2D pp_screen;

void main()
{
    vec4 tex = texture(pp_screen, var_texcoord0.xy);
    float tone = (tex.r+0.04+tex.g*tex.b*0.3);
    tex.rgb = vec3(tone);

    color_out = vec4(tex.r,tex.g,tex.b,1.0);
}

