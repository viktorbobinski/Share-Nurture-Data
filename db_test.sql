select gr.*, gr_cat.*, cat.* from "Share&Nurture"."Groups" as gr
    inner join "Share&Nurture"."Groups_Categories" as gr_cat on gr.id = gr_cat.group_id
        inner join "Share&Nurture"."Categories" as cat on gr_cat.category_id = cat.id;
