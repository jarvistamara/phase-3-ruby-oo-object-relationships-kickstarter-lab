class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backed = ProjectBacker.all.select do |b| b.backer == self
        end
        backed.map do |b| b.project
        end
    end

end