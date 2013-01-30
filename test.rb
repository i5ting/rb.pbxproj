##!/usr/bin/env ruby -wKU Ilib

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
    
    # item.instance_variables.each{|x| 
    #       eval "p #{x}"
    #     }
    #  
    # if t =~ /^*PBXBuildFile$/
    #       #:@isa, :@guid, :@comment, :@fileRef]
    #      # p item.isa+"      "+item.guid+"      "+item.comment+"      "
    #     end
    #     
    #     if t =~ /^*PBXFileReference$/
    #       #p item.instance_variables
    #       
    #       #[:@isa, :@guid, :@comment, :@explicitFileType, :@includeInIndex, :@path, :@sourceTree]
    # 
    #       #p item.isa+"      "+item.guid+"      "+item.comment+"      "+"      "+item.explicitFileType+"      "+"      "+item.path+"      "+"      "+item.sourceTree+"      "
    #     end
    #         # 
    #         # PBXProject::PBXTypes::PBXBuildFile
    #         # PBXProject::PBXTypes::PBXFileReference
    #         # PBXProject::PBXTypes::PBXFrameworksBuildPhase
    #         # PBXProject::PBXTypes::PBXGroup
    #         # PBXProject::PBXTypes::PBXNativeTarget
    #         # PBXProject::PBXTypes::PBXProject
    #         # PBXProject::PBXTypes::PBXResourcesBuildPhase
    #         # PBXProject::PBXTypes::PBXSourcesBuildPhase
    #         # PBXProject::PBXTypes::PBXVariantGroup
    #         # PBXProject::PBXTypes::XCBuildConfiguration
    #         # PBXProject::PBXTypes::XCConfigurationList
    #         #   
    #     if t =~ /^*PBXFrameworksBuildPhase$/
    #           #p item.instance_variables
    #       
    #           #[:@isa, :@guid, :@comment, :@buildActionMask, :@files, :@runOnlyForDeploymentPostprocessing]
    # 
    #           #p item.guid+"      "+item.comment 
    #           item.files.each do |f|
    #             #p f
    #           end
    #           #p item.runOnlyForDeploymentPostprocessing
    #     end
    #     
    #     
    #     
    #     
    #     #p "\n"
    #     if t =~ /^*PBXGroup$/
    #           #p item.instance_variables
    #       
    #           #[:@isa, :@guid, :@comment, :@children, :@sourceTree]
    # 
    #          # p item.isa
    #           # p item.guid
    #            
    #           # p item.sourceTree
    #     end
    #     # p item.class
    #     break
    #     # p "#{item}-#{item.instance_variables}"
    #     # p "#{item.comment}  #{item.guid}"
    #     
    #     
    #   end
    #   
  
  # p "*"*100
end
# t1.each{|x| p x}
#   
# # create new shell script
# scrt = PBXProject::PBXTypes::PBXShellScriptBuildPhase :shellPath => '/bin/sh', :shellScript => "\"echo 'Hello world!' > foo.log\""
  
#   
# # add it to target's build phase (by default to last item)
# target.add_build_phase scrt
#   
# # save new project.pbxproj
# pbx.write_to :file => 'path/to/project.pbxproj'