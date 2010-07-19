#!/bin/bash

INPUTPARAMS=$@

PRJNAME=`pwd`
PRJNAME=`basename $PRJNAME`

# header of project file
echo "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\" ?>
<CodeBlocks_project_file>
	<FileVersion major=\"1\" minor=\"6\" />
	<Project>
		<Option title=\"$PRJNAME\" />
		<Option makefile_is_custom=\"1\" />
		<Option pch_mode=\"2\" />
		<Option compiler=\"gcc\" />
		<Build>
			<Target title=\"clean\">
				<Option type=\"4\" />
				<Option compiler=\"gcc\" />
			</Target>
			<Target title=\""$PRJNAME"_wave\">
				<Option type=\"4\" />
				<Option compiler=\"gcc\" />
			</Target>
		</Build>
		<Compiler>
			<Add option=\"-Wall\" />
		</Compiler>" > "$PRJNAME".cbp

# add every file to project
for file in $INPUTPARAMS; do
	echo "		<Unit filename=\""$file"\" />" >>  "$PRJNAME".cbp
done

#add Makefile to Project:
echo "		<Unit filename=\"Makefile\">
			<Option target=\"&lt;{~None~}&gt;\" />
		</Unit>" >> "$PRJNAME".cbp

#end of prj-file
echo "		<Extensions>
			<code_completion />
			<debugger />
			<envvars />
		</Extensions>
	</Project>
</CodeBlocks_project_file>" >> "$PRJNAME".cbp
