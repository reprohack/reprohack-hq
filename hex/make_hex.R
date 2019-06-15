library(magick)
library(hexSticker)
library(dplyr)

# The reprohack_image_high.png was made using image.pptx, also in assets
sticker(here::here("assets", "reprohack_image_high.png"),
        package="ReproHack", 
        p_size=7, s_x=1.0, s_y=0.8, s_width=1.05, 
        p_color = "#16a085", l_y = 1.05, l_x = 0.9, 
        h_fill="white", h_color="#16a085", h_size = 2.5,
        filename="hex/reprohack.png", spotlight = F, asp = 0.7679814)


