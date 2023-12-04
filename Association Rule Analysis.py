from mlxtend.frequent_patterns import apriori, association_rules

def run_association_rules(data, min_support=0.001, min_confidence=0.05):
    frequent_itemsets = apriori(data, min_support=min_support, use_colnames=True)
    rules = association_rules(frequent_itemsets, metric="confidence", min_threshold=min_confidence)
    return rules
