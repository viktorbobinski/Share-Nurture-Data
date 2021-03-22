--select all contents which share the same category with a group, list all groups
select gr.*, con.*, cat.id from "Share&Nurture"."Groups" as gr
    inner join "Share&Nurture"."Groups_Categories" as gr_cat on gr.id = gr_cat.group_id
        inner join "Share&Nurture"."Categories" as cat on gr_cat.category_id = cat.id
            inner join "Share&Nurture"."Contents_Categories" as con_cat on gr_cat.category_id = con_cat.category_id
                inner join "Share&Nurture"."Contents" as con on con_cat.content_id = con.id
    where gr.name = 'yoga in paris';

--select all categories for each content
select con.*, cat.* from "Share&Nurture"."Contents" as con
    inner join "Share&Nurture"."Contents_Categories" as con_cat on con.id = con_cat.content_id
        inner join "Share&Nurture"."Categories" as cat on cat.id = con_cat.category_id