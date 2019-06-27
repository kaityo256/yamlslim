class Hash
  def method_missing(method, *args)
    key = method.to_s
    if self.has_key? key
      self[key]
    else
      false
    end
  end

  def journal_ref
    "#{journal}, <strong>#{volume}</strong>, #{page} (#{year})"
  end

  def arxiv_ref
    "<a href=\"https://arxiv.org/abs/#{arxiv}\">arXiv:#{arxiv}</a>"
  end
end
