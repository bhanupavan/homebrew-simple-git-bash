# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class SimpleGitBash < Formula
  desc ""
  homepage ""
  url "https://github.com/bhanupavan/simple-git-bash/archive/v1.0.0.tar.gz"
  sha256 "7c6330443573e2e0fcc9d7bb6538b96e9f25d36aef69c2f652306474507782b4"
  

  def install
    %x( echo "source ~/.git-completion.bash" | cat - ~/.bash_profile > ~/temp && mv ~/temp ~/.bash_profile  )
    %x( echo "source ~/.git-prompt.sh" | cat - ~/.bash_profile > ~/temp && mv ~/temp ~/.bash_profile  )
    %x( echo "source ~/.git-local-support.sh" | cat - ~/.bash_profile > ~/temp && mv ~/temp ~/.bash_profile  )
    
  end

 
end
