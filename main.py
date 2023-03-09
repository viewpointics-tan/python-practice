from langchain import OpenAI, LLMChain, PromptTemplate
import openai_api_key

template = """
Human: {human_input}
Assistant:"""

prompt = PromptTemplate(
    input_variables=["human_input"], 
    template=template
)

chatgpt_chain = LLMChain(
    llm=OpenAI(temperature=0.7), 
    prompt=prompt, 
    verbose=True, 
    # memory=ConversationBufferWindowMemory(k=2),
)

output = chatgpt_chain.predict(human_input="あなたの現在の状態について教えてください。")
print(output)