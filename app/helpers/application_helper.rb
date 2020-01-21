module ApplicationHelper

  def guthub_url(author, repo)
    link_to repo, 'https://github.com/' + author + '/' + repo, target: :_blank
  end

  def year_now
    Time.now.year
  end

end
