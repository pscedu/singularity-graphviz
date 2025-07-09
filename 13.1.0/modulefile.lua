--
-- GRAPHVIZ 9.0.0 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Other"
-- "Description: Graphviz is a package of open-source tools initiated by AT&T Labs Research for drawing graphs specified in DOT language scripts."
-- "Keywords: singularity utilities"

whatis("Name: GRAPHVIZ")
whatis("Version:9.0.0")
whatis("Category: Other")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description:  Graphviz is a package of open-source tools initiated by AT&T Labs Research for drawing graphs specified in DOT language scripts.")

help([[
GAPHVIZ is a package of open-source tools initiated by AT&T Labs Research for drawing graphs specified in DOT language scripts.
  
To load the module type

> module load graphviz/9.0.0

To unload the module type

> module unload graphviz/9.0.0

Documentation
-------------
https://graphviz.org/

For help, type (no input arguments)

> dot --help

Repository
----------
Tools included in this module are

* dot
]])

local package = "graphviz"
local version = "9.0.0"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
