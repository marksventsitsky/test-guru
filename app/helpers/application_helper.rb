module ApplicationHelper

  def guthub_url(author, repo)
    'https://github.com/' + author + '/' + repo
  end

  def year_now
    Time.now.year
  end

end
