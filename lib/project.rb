class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self

  end

  def backer=(backer)
    @backer = backer
    backer.back_project(self)
    @backed_projects
  end

end
