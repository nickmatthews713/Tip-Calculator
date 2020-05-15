class TipScore {
  double _score;

  TipScore(double score) {
    this._score = score;
  }

  void addToScore(double toAdd) {
    _score += toAdd;
  }

  void subtractFromScore(double toSubtract) {
    _score -= toSubtract;
  }

  double getScore() {
    return _score;
  }
}
