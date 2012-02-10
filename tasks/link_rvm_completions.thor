# link dotfiles into ~
class Link < BetterThor
  default_task :all

  desc "rvm", "Link _rmv completion file into zsh/compleion-scripts"
  def rvm
    replace_all = false
    rvm_link_location = 'zsh/completion-scripts/_rvm'
    rvm_file_location = '.rvm/scripts/zsh/Completion/_rvm'
    rvm_file = File.join(home_directory, rvm_file_location)
    rvm_link = File.join(Dir.pwd, rvm_link_location)

    if File.exist?(rvm_link)
      warning("overwrite #{rvm_link}? [ynq] ")
      case $stdin.gets.chomp
      when 'y'
        rvm_force_link_file(rvm_file, rvm_link)
      when 'q'
        exit
      else
        info("skipping")
      end
    else
      rvm_link_file(rvm_file, rvm_link)
    end
  end

  no_tasks do
    def rvm_force_link_file(source_file, link_file)
      FileUtils.rm(link_file, :force => true)
      link_file(source_file, link_file)
    end

    def rvm_link_file(source_file, link_file)
      info("linking to #{source_file} with #{link_file}")
      FileUtils.ln_s(source_file, link_file)
    end
  end
end
