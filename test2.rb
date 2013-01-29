# **pbxproject** is a Ruby library for managing XCode 4 project files.
# 
# pbxproject parses those .pbxproj -files and makes them Ruby objects
# which means simple and easy management for projects.
# Adding additional build phases is as simple as creating new object
# and calling proper methods.
#
require 'pbxproject/pbxtypes'
require 'pbxproject/pbxproject'
# 


# require 'pbxproject'

# After this using pbxproject files are as easy as managing ruby objects:

# raises error if file is not found
pbx = PBXProject::PBXProject.new :file => 'project.pbxproj'
	
# parses project file
pbx.parse

@s=0
def recursion_dump_instance_variables(item)
  @s += 1;
  item.instance_variables.each do |v|
    p "#{@s}---"
    p  item.instance_variable_get(v)
    p "---"
    recursion_dump_instance_variables v
  end
end

# [:@filename, :@sections, :@state, :@archiveVersion, :@objectVersion, :@rootObject]
# p pbx.instance_variables
# p pbx.sections
# p pbx.sections
# p pbx.state
# p pbx.archiveVersion
# p pbx.objectVersion
# p pbx.rootObject  
# # finds and returns named native target
# target = pbx.find_item :name => "MyGreatGame", :type => PBXProject::PBXTypes::PBXNativeTarget
# :isa, :buildActionMask, :files, :runOnlyForDeploymentPostprocessing
t= pbx.find_item  :type => PBXProject::PBXTypes::PBXSourcesBuildPhase
pbx.sections.each do |t, arr|
   #p t
  arr.each do |item|
    
    k= item.class
    ObjectSpace.each_object(k) {|x| 
      x.instance_variables.each do |y|
        p x.instance_variable_get(y)
      end
      p "*"*80
    }
    
    #recursion_dump_instance_variables item
    p "---"*48
    
  end
end
