# readme for couldbethis SlimLine variant

In `xfwm4-settings`, edit in channel `xfwm4`

 * `/general/title_vertical_offset_inactive` = `1`

 * `/general/title_vertical_offset_active` = `1`

##  April 16 2022

* I've nicked (but should perhaps have included as a submodule?) many the other contents from [my fork ](https://github.com/CouldBeThis/Solaris-9) of [B00merang-Project/Solaris-9](https://github.com/B00merang-Project/Solaris-9) to see about porting the `xfwm4` theme to `gtk3`.
* plan: change the css to accept old icons and maybe write a script to rename those items which could require it.

some work elsewhere:

* [convert `.xpm` images (used in gtk 2 theme)](https://gist.github.com/CouldBeThis/c521b87deaa7af7ff490475f8e8f3046)
* [convert colors from hex to HSL (source = list in text file)](https://gist.github.com/CouldBeThis/e3e6f168a00c92f1ca5dc22d87cbf694)





## List of  `.xpm` frame and button part names in `xfwm4`

from [howto:xfwm4_theme [Xfce Wiki]](https://wiki.xfce.org/howto/xfwm4_theme) 

| Active              | Inactive              | Prelight (buttons only) | Pressed (buttons only) | Toggled active (buttons only) | Toggled inactive (buttons only) | Toggled prelight (buttons only) | Toggled pressed (buttons only) |
| ------------------- | --------------------- | ----------------------- | ---------------------- | ----------------------------- | ------------------------------- | ------------------------------- | ------------------------------ |
| menu-active         | menu-inactive         | menu-prelight           | menu-pressed           |                               |                                 |                                 |                                |
| shade-active        | shade-inactive        | shade-prelight          | shade-pressed          | shade-toggled-active          | shade-toggled-inactive          | shade-toggled-prelight          | shade-toggled-pressed          |
| stick-active        | stick-inactive        | stick-prelight          | stick-pressed          | stick-toggled-active          | stick-toggled-inactive          | stick-toggled-prelight          | stick-toggled-pressed          |
| hide-active         | hide-inactive         | hide-prelight           | hide-pressed           |                               |                                 |                                 |                                |
| maximize-active     | maximize-inactive     | maximize-prelight       | maximize-pressed       | maximize-toggled-active       | maximize-toggled-inactive       | maximize-toggled-prelight       | maximize-toggled-pressed       |
| close-active        | close-inactive        | close-prelight          | close-pressed          |                               |                                 |                                 |                                |
| top-left-active     | top-left-inactive     |                         |                        |                               |                                 |                                 |                                |
| title-1-active      | title-1-inactive      |                         |                        |                               |                                 |                                 |                                |
| title-2-active      | title-2-inactive      |                         |                        |                               |                                 |                                 |                                |
| title-3-active      | title-3-inactive      |                         |                        |                               |                                 |                                 |                                |
| title-4-active      | title-4-inactive      |                         |                        |                               |                                 |                                 |                                |
| title-5-active      | title-5-inactive      |                         |                        |                               |                                 |                                 |                                |
| top-right-active    | top-right-inactive    |                         |                        |                               |                                 |                                 |                                |
| right-active        | right-inactive        |                         |                        |                               |                                 |                                 |                                |
| bottom-right-active | bottom-right-inactive |                         |                        |                               |                                 |                                 |                                |
| bottom-active       | bottom-inactive       |                         |                        |                               |                                 |                                 |                                |
| bottom-left-active  | bottom-left-inactive  |                         |                        |                               |                                 |                                 |                                |
| left-active         | left-inactive         |                         |                        |                               |                                 |                                 |                                |

























